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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>) {
  r0 = vec4<f32>(((v1.wz * vec2<f32>(255.0f))).xy, r0.zw);
  let v_1 = round(r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = max(r0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r0.z = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz);
  r0.z = sqrt(r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_4 = (cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz / r0.zzz);
    r1 = vec4<f32>(v_4.xyz, r1.w);
    let v_5 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz / r0.zzz);
    r2 = vec4<f32>(v_5.xyz, r2.w);
    let v_6 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz / r0.zzz);
    r3 = vec4<f32>(v_6.xyz, r3.w);
  } else {
    let v_7 = cb4_4.tint_symbol[bitcast<i32>(r0.x)];
    r1 = vec4<f32>(v_7.xyz, r1.w);
    let v_8 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))];
    r2 = vec4<f32>(v_8.xyz, r2.w);
    let v_9 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))];
    r3 = vec4<f32>(v_9.xyz, r3.w);
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
  let v_10 = bitcast<vec3<u32>>(r2.www);
  let v_11 = select(v4, r1.xyz, (v_10 != vec3<u32>()));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = -(r0.zzzz);
  r2.x = fma(v1.x, r0.z, v_12.x);
  r0.z = fma(v1.y, r2.x, r0.z);
  let v_13 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r3 = (r1.wwww * cb1_1.tint_symbol_1[9u]);
  r3 = fma(r0.wwww, cb1_1.tint_symbol_1[8u], r3);
  r3 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r3);
  r3 = (r3 + cb1_1.tint_symbol_1[11u]);
  let v_17 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r1 = vec4<f32>(v_19.xy, r1.z, v_19.z);
  let v_20 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_21 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.x = dot(r1.xyz, r4.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v_22 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + v_22.x));
  r0.x = f32(bitcast<i32>(r0.x));
  let v_23 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r0.x = clamp(((cb2_2.tint_symbol_3[16u].zzzz + cb3_3.tint_symbol_4[49u].wwww)).x, 0.0f, 1.0f);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_24 = (r0.www * r1.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  r0.x = (r0.x * cb2_2.tint_symbol_3[15u].y);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_25 = (r1.www * r4.xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = -(cb3_3.tint_symbol_4[0u].xyzx);
  let v_27 = fma(r4.xyz, r1.www, v_26.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_28 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  r1.w = clamp(cb12_12.tint_symbol_5[0u].z, 0.0f, 1.0f);
  r2.w = (cb2_2.tint_symbol_3[15u].z * cb2_2.tint_symbol_3[15u].z);
  r0.x = (r0.x * r0.x);
  r4.w = (cb12_12.tint_symbol_5[0u].y + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_5[0u].y);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r5.xyz, v_26.xyz);
  r6.w = clamp(r5.wwww.w, 0.0f, 1.0f);
  r6.w = ((-(abs(r5.wwww))).w + r6.w);
  let v_29 = abs(r5.wwww);
  r5.w = fma(r0.z, r6.w, v_29.w);
  let v_30 = dot(r6.xyz, r5.xyz);
  r6.x = clamp(vec4<f32>(v_30, v_30, v_30, v_30).x, 0.0f, 1.0f);
  let v_31 = dot(r4.xyz, v_26.xyz);
  r6.y = clamp(vec4<f32>(v_31, v_31, v_31, v_31).y, 0.0f, 1.0f);
  let v_32 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_32.xy, r6.zw);
  let v_33 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_33.xy);
  let v_34 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_34.xy);
  let v_35 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_35.xy, r6.zw);
  r6.z = ((-(cb12_12.tint_symbol_5[0u].xxxx)).z + 1.0f);
  let v_36 = fma(cb12_12.tint_symbol_5[0u].xx, r6.xy, r6.zz);
  r6 = vec4<f32>(v_36.xy, r6.zw);
  let v_37 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_37.xy);
  r6.z = (r6.z * 0.125f);
  r7.x = max(r0.z, r6.x);
  r6.x = (r6.x + -1.0f);
  r6.x = fma(r7.x, r6.x, 1.0f);
  r6.x = fma((-(r1.wwww)).x, r6.x, 1.0f);
  r4.x = dot(r5.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.w);
  r4.x = exp2(r4.x);
  r4.x = (r6.y * r4.x);
  r4.x = (r6.z * r4.x);
  r1.w = (r1.w * r4.x);
  r1.w = (r5.w * r1.w);
  r4.x = (r5.w * r6.x);
  let v_38 = (r4.xxx * cb3_3.tint_symbol_4[1u].xyz);
  o5 = vec4<f32>(v_38.xyz, o5.w);
  let v_39 = (r1.www * cb3_3.tint_symbol_4[1u].xyz);
  o6 = vec4<f32>(v_39.xyz, o6.w);
  o5.w = ((-(r6.xxxx)).w + 1.0f);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_4[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_4[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_40 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.www, cb3_3.tint_symbol_4[48u].xyz);
  r4 = vec4<f32>(v_40.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_3[16u].zzzz)).w + 1.0f);
  let v_41 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.www, cb3_3.tint_symbol_4[46u].xyz);
  r6 = vec4<f32>(r6.x, v_41.xyz);
  let v_42 = (r6.yzw * cb2_2.tint_symbol_3[16u].zzz);
  r6 = vec4<f32>(r6.x, v_42.xyz);
  let v_43 = fma(r4.xyz, r1.www, r6.yzw);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = (r0.xxx * r4.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.www, cb3_3.tint_symbol_4[44u].xyz);
  r6 = vec4<f32>(r6.x, v_45.xyz);
  r8.x = cb3_3.tint_symbol_4[46u].w;
  r8.y = cb3_3.tint_symbol_4[47u].w;
  r8.z = cb3_3.tint_symbol_4[48u].w;
  let v_46 = dot(r8.xyz, r5.xyz);
  r0.w = clamp(vec4<f32>(v_46, v_46, v_46, v_46).w, 0.0f, 1.0f);
  let v_47 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.www, r6.yzw);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = fma(r5.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_48.xyz, r4.w);
  o11 = ((r6.xxx * r4.xyz)).xyzx;
  x0[0u].x = dot(r3, cb0_0.tint_symbol_2[0u]);
  o0 = cb10_10.tint_symbol_6[6u];
  o1 = cb10_10.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 7i))];
  o2 = vec4<f32>(v2.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, v3.xy);
  o6.w = r4.w;
  o7 = vec4<f32>(vec3<f32>(), o7.w);
  o7.w = r2.w;
  o8 = vec4<f32>(vec3<f32>(), o8.w);
  o8.w = r0.x;
  o9 = vec4<f32>(vec3<f32>(), o9.w);
  o9.w = r0.z;
  o10 = vec4<f32>(vec3<f32>(), o10.w);
  o10.w = r7.x;
  o12 = r3;
  let v_49 = &(x0[0u]);
  *(v_49) = vec4<f32>((*(v_49)).x, vec3<f32>());
  o3 = r2.xyz.xyzx;
  o4 = r1.xyz.xyzx;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, v);
}
