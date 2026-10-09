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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = (v7.y * 6.28318500518798828125f);
  let v = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_5[1u].zzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(cb2_2.tint_symbol_2[16u].xxx, r0.yzw, r0.xxx);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v7.xxz * cb8_8.tint_symbol_5[1u].xxy);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r2 = (v2 * vec4<f32>(255.001953125f));
  let v_5 = r2;
  let v_6 = max(v_5, vec4<f32>(-2147483648.0f));
  r2 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_6), vec4<i32>(2147483647i), (v_6 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_5 == v_5))));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2) * vec4<i32>(3i)));
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r2.y)]);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r2.x)], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r2.z)], v1.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r2.w)], v1.wwww, r3);
  r4.x = dot(r3.xyz, v4);
  r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.y) + 1i))]);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.x) + 1i))], v1.xxxx, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.z) + 1i))], v1.zzzz, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.w) + 1i))], v1.wwww, r5);
  r4.y = dot(r5.xyz, v4);
  r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.y) + 2i))]);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.x) + 2i))], v1.xxxx, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.z) + 2i))], v1.zzzz, r6);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.w) + 2i))], v1.wwww, r6);
  r4.z = dot(r2.xyz, v4);
  let v_7 = (r4.xyz * cb9_9.tint_symbol_4[0u].xxx);
  r6 = vec4<f32>(v_7.xyz, r6.w);
  let v_8 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r7 = vec4<f32>(v_8.xyz, r7.w);
  let v_9 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r7.xyz);
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  let v_10 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r7 = vec4<f32>(((v6.zyy + vec3<f32>(-0.5f, 0.52941179275512695312f, -0.03921568766236305237f))).xyz, r7.w);
  r7.x = clamp(r7.xxxx.x, 0.0f, 1.0f);
  r0.w = (r7.x + r7.x);
  let v_11 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_11.xyz, r6.w);
  r8 = vec4<f32>(v0.xyz, r8.w);
  r8.w = 1.0f;
  r9.x = dot(r3, r8);
  r1.w = dot(r3.xyz, v5.xyz);
  r9.y = dot(r5, r8);
  r3.x = dot(r5.xyz, v5.xyz);
  let v_12 = (r3.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r9.z = dot(r2, r8);
  r1.w = dot(r2.xyz, v5.xyz);
  let v_14 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r6.xyz, cb13_13.tint_symbol_3[2u].yyy, r9.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = (r9.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = fma(r9.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = fma(r9.zzz, cb1_1.tint_symbol_1[2u].xyz, r5.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = (r5.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  o4 = (((-(r5.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  let v_20 = fma(r0.xyz, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[0u].w < 0.0f)));
  r0.x = select(v0.z, 0.0f, (bitcast<u32>(r0.x) != 0u));
  let v_21 = -(cb13_13.tint_symbol_3[0u].xyxx);
  let v_22 = (r0.xx + v_21.xy);
  r0 = vec4<f32>(v_22.xy, r0.zw);
  let v_23 = clamp(((r0.xyxx / cb13_13.tint_symbol_3[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_23.xy, r0.zw);
  r0.z = ((-(cb13_13.tint_symbol_3[0u].zzzz)).z + cb13_13.tint_symbol_3[0u].w);
  r0.x = fma(r0.x, r0.z, cb13_13.tint_symbol_3[0u].z);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = (v7.w * cb13_13.tint_symbol_3[2u].w);
  let v_24 = abs(r0.xxxx);
  o1.z = max(r0.y, v_24.z);
  r0.x = (v6.z * v6.z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.x = fma(cb13_13.tint_symbol_3[9u].w, r0.x, v6.z);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(2.0f), r0.wwww).x, 0.0f, 1.0f);
  o1.w = (r0.x * cb13_13.tint_symbol_3[2u].x);
  o1 = vec4<f32>(v3.xy, o1.zw);
  o2 = r4.xyz.xyzx;
  o3 = vec4<f32>(v6.xyz, o3.w);
  o3.w = 1.0f;
  o5 = r2.xyz.xyzx;
  let v_25 = (r4.yzx * r2.zxy);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = -(r0.xyzx);
  let v_27 = fma(r2.yzx, r4.zxy, v_26.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  o6 = ((r0.xyz * v5.www)).xyzx;
  r0.x = (r7.y * r7.y);
  o7.z = (r7.y * r0.x);
  r0.x = (r7.z * cb2_2.tint_symbol_2[16u].w);
  o7.x = (r0.x * 0.96078431606292724609f);
  o7.y = fma((-(v6.yyyy)).y, 25.5f, 1.0f);
}

struct tint_symbol_6 {
  @builtin(position)
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7);
}
