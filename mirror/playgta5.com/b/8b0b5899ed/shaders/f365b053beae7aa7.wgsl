diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

struct tint_symbol_4 {
  tint_symbol_3 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_4;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0.x = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v_1 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_1.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_2 = -(r0.xxxx);
  let v_3 = bitcast<u32>(r0.y);
  r0.x = select(v_2.x, r0.x, (v_3 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_1[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_1[16u].y < 0.00600000005215406418f)));
  let v_4 = bitcast<u32>(r0.y);
  let v_5 = r0.x;
  r0.x = select(bitcast<f32>(v.tint_symbol_3[0i].x), v_5, (v_4 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_1[16u].y)));
  let v_6 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_6 != 0u));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r0.z = fma(r0.y, r1.z, -0.0000199999994947575f);
  let v_7 = (r0.yyy * r1.xyw);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  r1.z = (r0.z * r0.y);
  o0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  let v_8 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  o4 = r0.xyz.xyzx;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_13 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_14 = clamp(((r0.xyxx + v_13)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_15 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_16.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v1.zw);
  o2 = v2.xyxy;
  let v_17 = (v3.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(v3.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  o3 = fma(v3.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz).xyzx;
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3, o4);
}
