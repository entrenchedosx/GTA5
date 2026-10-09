enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  o0 = vec4<f32>();
  o1 = vec4<f32>();
  o2 = vec4<f32>(v2.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  o3 = r0.xyz.xyzx;
  let v_5 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (v3.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(v3.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(v3.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r0.w = dot(r1.xyz, r0.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  let v_10 = -(bitcast<vec4<i32>>(r1.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) + v_10.w));
  r0.w = f32(bitcast<i32>(r0.w));
  let v_11 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  o4 = r1.xyz.xyzx;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_12 = -(cb3_3.tint_symbol_3[0u].xyzx);
  let v_13 = fma(r0.xyz, r0.www, v_12.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_15 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = dot(r2.xyz, v_12.xyz);
  r3.y = clamp(vec4<f32>(v_16, v_16, v_16, v_16).y, 0.0f, 1.0f);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_17 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_17.xy, r1.z, v_17.z);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_3[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_3[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_18 = dot(r0.xyz, r1.xyw);
  r3.x = clamp(vec4<f32>(v_18, v_18, v_18, v_18).x, 0.0f, 1.0f);
  let v_19 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = (r0.xy * r0.xy);
  r3 = vec4<f32>(v_20.xy, r3.zw);
  let v_21 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  let v_22 = (r0.xy * r3.xy);
  r0 = vec4<f32>(v_22.xy, r0.zw);
  r0.z = ((-(cb12_12.tint_symbol_4[0u].xxxx)).z + 1.0f);
  let v_23 = fma(cb12_12.tint_symbol_4[0u].xx, r0.xy, r0.zz);
  r0 = vec4<f32>(v_23.xy, r0.zw);
  r0.z = (r0.x + -1.0f);
  r0.x = max(r0.x, v1.w);
  r0.z = fma(r0.x, r0.z, 1.0f);
  o10.w = r0.x;
  r0.x = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  r0.z = fma((-(r0.xxxx)).z, r0.z, 1.0f);
  r1.z = dot(r1.xyw, v_12.xyz);
  r2.w = clamp(r1.zzzz.w, 0.0f, 1.0f);
  r2.w = ((-(abs(r1.zzzz))).w + r2.w);
  let v_24 = abs(r1.zzzz);
  r1.z = fma(v1.w, r2.w, v_24.z);
  r2.w = (r0.z * r1.z);
  let v_25 = (r2.www * cb3_3.tint_symbol_3[1u].xyz);
  o5 = vec4<f32>(v_25.xyz, o5.w);
  o5.w = ((-(r0.zzzz)).w + 1.0f);
  r2.x = dot(r1.xyw, r2.xyz);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.y = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r2.y = max(r2.y, 0.0f);
  r2.z = ((-(r2.yyyy)).z + cb12_12.tint_symbol_4[0u].y);
  r2.y = (r2.y * 558.0f);
  r2.y = fma(r2.z, 3.0f, r2.y);
  let v_26 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_26.xy);
  o6.w = r2.y;
  r2.x = (r2.x * r2.w);
  r2.y = (r2.z * 0.125f);
  r2.x = exp2(r2.x);
  r0.y = (r0.y * r2.x);
  r0.y = (r2.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r1.z * r0.x);
  let v_27 = (r0.xxx * cb3_3.tint_symbol_3[1u].xyz);
  o6 = vec4<f32>(v_27.xyz, o6.w);
  o7 = vec4<f32>(vec3<f32>(), o7.w);
  r0.x = (v1.x * cb2_2.tint_symbol_2[15u].z);
  r0.x = (r0.x * r0.x);
  o7.w = r0.x;
  r0.y = clamp(((cb2_2.tint_symbol_2[16u].zzzz + cb3_3.tint_symbol_3[49u].wwww)).y, 0.0f, 1.0f);
  r0.y = (r0.y * v1.y);
  r0.y = (r0.y * cb2_2.tint_symbol_2[15u].y);
  r0.y = (r0.y * r0.y);
  o8.w = r0.y;
  o8 = vec4<f32>(vec3<f32>(), o8.w);
  o9 = vec4<f32>(vec3<f32>(), o9.w);
  o9.w = v1.w;
  o10 = vec4<f32>(vec3<f32>(), o10.w);
  let v_28 = fma(cb3_3.tint_symbol_3[45u].xyz, r0.www, cb3_3.tint_symbol_3[46u].xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = (r2.xyz * cb2_2.tint_symbol_2[16u].zzz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = fma(cb3_3.tint_symbol_3[47u].xyz, r0.www, cb3_3.tint_symbol_3[48u].xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = fma(cb3_3.tint_symbol_3[43u].xyz, r0.www, cb3_3.tint_symbol_3[44u].xyz);
  r4 = vec4<f32>(v_31.xyz, r4.w);
  r0.w = ((-(cb2_2.tint_symbol_2[16u].zzzz)).w + 1.0f);
  let v_32 = fma(r3.xyz, r0.www, r2.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r3.x = cb3_3.tint_symbol_3[46u].w;
  r3.y = cb3_3.tint_symbol_3[47u].w;
  r3.z = cb3_3.tint_symbol_3[48u].w;
  let v_34 = dot(r3.xyz, r1.xyw);
  r0.y = clamp(vec4<f32>(v_34, v_34, v_34, v_34).y, 0.0f, 1.0f);
  let v_35 = fma(cb3_3.tint_symbol_3[49u].xyz, r0.yyy, r4.xyz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = fma(r1.xyz, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_36.xy, r0.z, v_36.z);
  o11 = ((r0.zzz * r0.xyw)).xyzx;
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o12 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_37 = &(x0[0u]);
  *(v_37) = vec4<f32>((*(v_37)).x, vec3<f32>());
  o13[0u] = x0[0u].x;
  o13[1u] = x0[0u].y;
  o13[2u] = x0[0u].z;
  o13[3u] = x0[0u].w;
  v = vec4<f32>(o13[0u], o13[1u], o13[2u], o13[3u]);
}

struct tint_symbol_6 {
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
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, v);
}
