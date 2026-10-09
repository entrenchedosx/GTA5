diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0.x = (cb1_1.tint_symbol_1[3u].x * 0.20000000298023223877f);
  let v_1 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_1.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_2 = -(r0.xxxx);
  let v_3 = bitcast<u32>(r0.y);
  r0.x = select(v_2.x, r0.x, (v_3 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_2[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_2[16u].y < 0.00600000005215406418f)));
  let v_4 = bitcast<u32>(r0.y);
  let v_5 = r0.x;
  r0.x = select(bitcast<f32>(v.tint_symbol_4[0i].x), v_5, (v_4 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_2[16u].y)));
  let v_6 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_6 != 0u));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r1 = (v2 * vec4<f32>(255.001953125f));
  let v_7 = r1;
  let v_8 = max(v_7, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_8), vec4<i32>(2147483647i), (v_8 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_7 == v_7))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1) * vec4<i32>(3i)));
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 1i))]);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], v1.xxxx, r2);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 1i))], v1.zzzz, r2);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 1i))], v1.wwww, r2);
  r3 = vec4<f32>(v0.xyz, r3.w);
  r3.w = 1.0f;
  r0.z = dot(r2, r3);
  r0.w = dot(r2.xyz, v4);
  let v_9 = (r0.www * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r4 = (r0.zzzz * cb1_1.tint_symbol_1[9u]);
  let v_10 = (r0.zzz * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r1.y)]);
  r6 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.x)], v1.xxxx, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.z)], v1.zzzz, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.w)], v1.wwww, r6);
  r0.z = dot(r6, r3);
  r0.w = dot(r6.xyz, v4);
  let v_11 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r4 = fma(r0.zzzz, cb1_1.tint_symbol_1[8u], r4);
  let v_12 = fma(r0.zzz, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 2i))]);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], v1.xxxx, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 2i))], v1.zzzz, r6);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 2i))], v1.wwww, r6);
  r0.z = dot(r1, r3);
  r0.w = dot(r1.xyz, v4);
  o3 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz).xyzx;
  r1 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r4);
  let v_13 = fma(r0.zzz, cb1_1.tint_symbol_1[2u].xyz, r5.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = (r0.z * 0.00000399999998990097f);
  r2.x = min(r0.z, 1.0f);
  r1 = (r1 + cb1_1.tint_symbol_1[11u]);
  r0.z = fma(r0.y, r1.z, 0.00000999999974737875f);
  let v_16 = (r0.yyy * r1.xyw);
  r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
  r1.z = (r0.z * r0.y);
  o0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  r2.y = ((-(r2.xxxx)).y + 1.0f);
  let v_17 = -(cb2_2.tint_symbol_2[16u].zzzz);
  let v_18 = clamp(((r2.xyxx + v_17)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_3[49u].w + -1.0f);
  let v_19 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = clamp(((r0.xyxx * v5.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_20.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v5.zw);
  o2 = v3.xyxy;
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3);
}
