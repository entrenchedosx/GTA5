enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_5;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  let v_2 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = r0;
  o3 = vec4<f32>(v_7.xyz, o3.w);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_8 = -(cb2_2.tint_symbol_2[16u].zzzz);
  let v_9 = clamp(((r0.xyxx + v_8)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_3[49u].w + -1.0f);
  let v_10 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o0 = vec4<f32>(v_11.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v1.zw);
  r0.x = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v_12 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_12.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_13 = -(r0.xxxx);
  let v_14 = bitcast<u32>(r0.y);
  r0.x = select(v_13.x, r0.x, (v_14 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_2[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_2[16u].y < 0.00600000005215406418f)));
  let v_15 = bitcast<u32>(r0.y);
  let v_16 = r0.x;
  r0.x = select(bitcast<f32>(v_1.tint_symbol_4[0i].x), v_16, (v_15 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_2[16u].y)));
  let v_17 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_17 != 0u));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r1 = fma(r0.yyyy, r1, vec4<f32>(0.0f, 0.0f, 0.00000099999999747524f, 0.0f));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o1.z = r0.w;
  o4 = r0;
  o1 = vec3<f32>(v2.xy, o1.xyz.z).xyzx;
  r0.x = dot(v3, v3);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_18 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
  let v_21 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o2 = ((r0.www * r0.xyz)).xyzx;
  o3.w = 1.0f;
  let v_22 = &(x0[0u]);
  *(v_22) = vec4<f32>((*(v_22)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_7 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(position)
  o4 : vec4<f32>,
  @builtin(clip_distances)
  o5 : array<f32, 4u>,
  @location(15u)
  tint_symbol_6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_7(o0, o1, o2, o3, o4, o5, v);
}
