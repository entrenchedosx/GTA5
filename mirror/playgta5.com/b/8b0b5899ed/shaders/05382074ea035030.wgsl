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

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb2_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb17_struct;

struct cb1280_struct {
  tint_symbol_3 : array<vec4<f32>, 1280u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb1280_struct;

var<private> v5 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v5.x = bitcast<f32>((v - v_1));
  r0.x = (v2.y * 6.28318500518798828125f);
  r1 = bitcast<vec4<f32>>(((bitcast<vec4<i32>>(v5.xxxx) * vec4<i32>(5i)) + vec4<i32>(1i, 2i, 3i, 4i)));
  let v_2 = fma(cb10_10.tint_symbol_2[16u].zzz, cb5_5.tint_symbol_3[bitcast<i32>(r1.w)].zzw, r0.xxx);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = ((-(v2.zzzz)).w + 1.0f);
  r2.z = (r0.w * cb5_5.tint_symbol_3[bitcast<i32>(r1.w)].y);
  let v_4 = (v2.xx * cb5_5.tint_symbol_3[bitcast<i32>(r1.w)].xx);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = (r0.xyz * r2.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = ((-(cb10_10.tint_symbol_2[0u].xyzx)).xyz + cb5_5.tint_symbol_3[bitcast<i32>(r1.z)].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = clamp(fma(r0.wwww, cb4_4.tint_symbol_1[1u].zzzz, cb4_4.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_7 = fma(v0.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1.w = bitcast<f32>((bitcast<i32>(v5.x) * 5i));
  r2.x = cb5_5.tint_symbol_3[bitcast<i32>(r1.w)].x;
  r0.w = 1.0f;
  r2.y = cb5_5.tint_symbol_3[bitcast<i32>(r1.x)].x;
  r2.z = cb5_5.tint_symbol_3[bitcast<i32>(r1.y)].x;
  r2.w = cb5_5.tint_symbol_3[bitcast<i32>(r1.z)].x;
  r2.x = dot(r0, r2);
  r3.x = cb5_5.tint_symbol_3[bitcast<i32>(r1.w)].y;
  r4.x = cb5_5.tint_symbol_3[bitcast<i32>(r1.w)].z;
  r3.y = cb5_5.tint_symbol_3[bitcast<i32>(r1.x)].y;
  r3.z = cb5_5.tint_symbol_3[bitcast<i32>(r1.y)].y;
  r3.w = cb5_5.tint_symbol_3[bitcast<i32>(r1.z)].y;
  r2.y = dot(r0, r3);
  let v_8 = -(cb10_10.tint_symbol_2[4u].xyxx);
  let v_9 = (r2.xy + v_8.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r1.w = dot(cb10_10.tint_symbol_2[5u].xy, r3.xy);
  r1.w = clamp(((r1.wwww * cb10_10.tint_symbol_2[5u].wwww)).w, 0.0f, 1.0f);
  let v_10 = fma(r1.ww, cb10_10.tint_symbol_2[5u].xy, cb10_10.tint_symbol_2[4u].xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = -(r3.xyxx);
  let v_12 = (r2.xy + v_11.xy);
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r1.w = dot(r3.xy, r3.xy);
  r2.w = ((-(r1.wwww)).w + cb10_10.tint_symbol_2[6u].y);
  r2.w = clamp(((r2.wwww * cb10_10.tint_symbol_2[6u].zzzz)).w, 0.0f, 1.0f);
  r4.y = cb5_5.tint_symbol_3[bitcast<i32>(r1.x)].z;
  r4.z = cb5_5.tint_symbol_3[bitcast<i32>(r1.y)].z;
  r4.w = cb5_5.tint_symbol_3[bitcast<i32>(r1.z)].z;
  r2.z = dot(r0, r4);
  r0.x = ((-(r2.zzzz)).x + cb10_10.tint_symbol_2[6u].w);
  r0.x = fma(r2.w, r0.x, r2.z);
  r0.y = (r2.w * cb10_10.tint_symbol_2[6u].x);
  r0.z = (cb10_10.tint_symbol_2[6u].x * 0.5f);
  r0.z = (r0.z * r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  r0.w = inverseSqrt(r1.w);
  let v_13 = (r0.ww * r3.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = (r0.yy * r1.xy);
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  let v_16 = fma(r0.yw, v3.zz, r2.xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  r0.y = (cb10_10.tint_symbol_2[6u].w + -0.25f);
  let v_17 = bitcast<u32>(r0.z);
  let v_18 = r0.y;
  r1.z = select(r0.x, v_18, (v_17 != 0u));
  let v_19 = -(cb10_10.tint_symbol_2[6u].wwww);
  r0.x = (r2.z + v_19.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.xxxx).x)));
  let v_20 = bitcast<vec3<u32>>(r0.xxx);
  let v_21 = r1.xyz;
  let v_22 = select(r2.xyz, v_21, (v_20 != vec3<u32>()));
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_24 = r0.xyz;
  let v_25 = select(r2.xyz, v_24, (v_23 != vec3<u32>()));
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb10_10.tint_symbol_2[9u].w);
  let v_26 = -(cb10_10.tint_symbol_2[7u].xyxx);
  let v_27 = (r0.xy + v_26.xy);
  r1 = vec4<f32>(v_27.xy, r1.zw);
  r1.x = dot(cb10_10.tint_symbol_2[8u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb10_10.tint_symbol_2[8u].wwww)).x, 0.0f, 1.0f);
  let v_28 = fma(r1.xx, cb10_10.tint_symbol_2[8u].xy, cb10_10.tint_symbol_2[7u].xy);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  let v_29 = -(r1.xyxx);
  let v_30 = (r0.xy + v_29.xy);
  r1 = vec4<f32>(v_30.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb10_10.tint_symbol_2[9u].y);
  r1.w = clamp(((r1.wwww * cb10_10.tint_symbol_2[9u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb10_10.tint_symbol_2[9u].x);
  r2.x = (cb10_10.tint_symbol_2[9u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_31 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_31.xy, r1.zw);
  let v_32 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_32.xy, r1.zw);
  let v_33 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_33.xy, r1.zw);
  r1.w = (cb10_10.tint_symbol_2[9u].w + -0.25f);
  let v_34 = bitcast<u32>(r2.x);
  let v_35 = r1.w;
  r1.z = select(r0.w, v_35, (v_34 != 0u));
  let v_36 = -(cb10_10.tint_symbol_2[9u].wwww);
  r0.w = (r0.z + v_36.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_37 = bitcast<vec3<u32>>(r0.www);
  let v_38 = r1.xyz;
  let v_39 = select(r0.xyz, v_38, (v_37 != vec3<u32>()));
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_41 = r1.xyz;
  let v_42 = select(r0.xyz, v_41, (v_40 != vec3<u32>()));
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb10_10.tint_symbol_2[12u].w);
  let v_43 = -(cb10_10.tint_symbol_2[10u].xyxx);
  let v_44 = (r0.xy + v_43.xy);
  r1 = vec4<f32>(v_44.xy, r1.zw);
  r1.x = dot(cb10_10.tint_symbol_2[11u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb10_10.tint_symbol_2[11u].wwww)).x, 0.0f, 1.0f);
  let v_45 = fma(r1.xx, cb10_10.tint_symbol_2[11u].xy, cb10_10.tint_symbol_2[10u].xy);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = -(r1.xyxx);
  let v_47 = (r0.xy + v_46.xy);
  r1 = vec4<f32>(v_47.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb10_10.tint_symbol_2[12u].y);
  r1.w = clamp(((r1.wwww * cb10_10.tint_symbol_2[12u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb10_10.tint_symbol_2[12u].x);
  r2.x = (cb10_10.tint_symbol_2[12u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_48 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_48.xy, r1.zw);
  let v_49 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_49.xy, r1.zw);
  let v_50 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_50.xy, r1.zw);
  r1.w = (cb10_10.tint_symbol_2[12u].w + -0.25f);
  let v_51 = bitcast<u32>(r2.x);
  let v_52 = r1.w;
  r1.z = select(r0.w, v_52, (v_51 != 0u));
  let v_53 = -(cb10_10.tint_symbol_2[12u].wwww);
  r0.w = (r0.z + v_53.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_54 = bitcast<vec3<u32>>(r0.www);
  let v_55 = r1.xyz;
  let v_56 = select(r0.xyz, v_55, (v_54 != vec3<u32>()));
  r1 = vec4<f32>(v_56.xyz, r1.w);
  let v_57 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_58 = r1.xyz;
  let v_59 = select(r0.xyz, v_58, (v_57 != vec3<u32>()));
  r0 = vec4<f32>(v_59.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb10_10.tint_symbol_2[15u].w);
  let v_60 = -(cb10_10.tint_symbol_2[13u].xyxx);
  let v_61 = (r0.xy + v_60.xy);
  r1 = vec4<f32>(v_61.xy, r1.zw);
  r1.x = dot(cb10_10.tint_symbol_2[14u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb10_10.tint_symbol_2[14u].wwww)).x, 0.0f, 1.0f);
  let v_62 = fma(r1.xx, cb10_10.tint_symbol_2[14u].xy, cb10_10.tint_symbol_2[13u].xy);
  r1 = vec4<f32>(v_62.xy, r1.zw);
  let v_63 = -(r1.xyxx);
  let v_64 = (r0.xy + v_63.xy);
  r1 = vec4<f32>(v_64.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb10_10.tint_symbol_2[15u].y);
  r1.w = clamp(((r1.wwww * cb10_10.tint_symbol_2[15u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb10_10.tint_symbol_2[15u].x);
  r2.x = (cb10_10.tint_symbol_2[15u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_65 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_65.xy, r1.zw);
  let v_66 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_66.xy, r1.zw);
  let v_67 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_67.xy, r1.zw);
  r1.w = (cb10_10.tint_symbol_2[15u].w + -0.25f);
  let v_68 = bitcast<u32>(r2.x);
  let v_69 = r1.w;
  r1.z = select(r0.w, v_69, (v_68 != 0u));
  let v_70 = -(cb10_10.tint_symbol_2[15u].wwww);
  r0.w = (r0.z + v_70.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_71 = bitcast<vec3<u32>>(r0.www);
  let v_72 = r1.xyz;
  let v_73 = select(r0.xyz, v_72, (v_71 != vec3<u32>()));
  r1 = vec4<f32>(v_73.xyz, r1.w);
  let v_74 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_75 = r1.xyz;
  let v_76 = select(r0.xyz, v_75, (v_74 != vec3<u32>()));
  r0 = vec4<f32>(v_76.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1.x = (v0.z / cb4_4.tint_symbol_1[1u].y);
  r1.x = min(abs(r1.xxxx).x, 1.0f);
  o0.z = fma(r1.x, cb4_4.tint_symbol_1[1u].x, r0.z);
  let v_77 = r0;
  o0 = vec4<f32>(v_77.xy, o0.z, v_77.w);
  o1 = v4.xyxy;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @builtin(instance_index) v_78 : u32) -> tint_symbol_4 {
  main_inner(v0, v2, v3, v4, i32(v_78));
  return tint_symbol_4(o0, o1);
}
