diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

struct cb50_struct {
  tint_symbol_3 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = (v7.y * 6.28318500518798828125f);
  let v = (cb13_13.tint_symbol_4[0u].zzw * cb13_13.tint_symbol_4[1u].zzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(cb2_2.tint_symbol_2[16u].xxx, r0.yzw, r0.xxx);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v7.xxz * cb13_13.tint_symbol_4[0u].xxy);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz * cb13_13.tint_symbol_4[1u].xxy);
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
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = dot(r3, r4);
  r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.y) + 1i))]);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.x) + 1i))], v1.xxxx, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.z) + 1i))], v1.zzzz, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.w) + 1i))], v1.wwww, r6);
  r5.y = dot(r6, r4);
  r7 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.y) + 2i))]);
  r7 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.x) + 2i))], v1.xxxx, r7);
  r7 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.z) + 2i))], v1.zzzz, r7);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.w) + 2i))], v1.wwww, r7);
  r5.z = dot(r2, r4);
  let v_7 = fma(r0.xyz, r1.xyz, r5.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r5.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r5.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(r5.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = ((-(r1.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r1.x = min(r0.w, 1.0f);
  r4 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r4 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r4);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r4);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  let v_13 = -(cb2_2.tint_symbol_2[16u].zzzz);
  let v_14 = clamp(((r1.xyxx + v_13)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_3[49u].w + -1.0f);
  let v_15 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = clamp(((r0.xyxx * v6.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_16.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v6.zw);
  o2 = v3.xyxy;
  r0.x = dot(r6.xyz, v4);
  r0.y = dot(r6.xyz, v5.xyz);
  let v_17 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = (r0.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r0.x = dot(r3.xyz, v4);
  r1.w = dot(r3.xyz, v5.xyz);
  let v_19 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r0.x = dot(r2.xyz, v4);
  r1.w = dot(r2.xyz, v5.xyz);
  let v_21 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  let v_22 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  o3 = r1.xyz.xyzx;
  o4 = r0.yzw.xyzx;
  let v_23 = (r0.wyz * r1.yzx);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = -(r2.xyzx);
  let v_25 = fma(r0.zwy, r1.zxy, v_24.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  o5 = ((r0.xyz * v5.www)).xyzx;
}

struct tint_symbol_5 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5);
}
