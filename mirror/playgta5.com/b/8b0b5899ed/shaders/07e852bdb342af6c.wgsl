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

struct cb1_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct_1;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = r0;
  o4 = vec4<f32>(v_6.xyz, o4.w);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_7 = -(cb2_2.tint_symbol_2[16u].zzzz);
  let v_8 = clamp(((r0.xyxx + v_7)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_3[49u].w + -1.0f);
  let v_9 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o0 = vec4<f32>(v_10.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v1.zw);
  r0.x = v1.z;
  r0.y = cb13_13.tint_symbol_4[0u].x;
  o1 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
  o2 = v2.xyxy;
  r0.x = dot(v3, v3);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_11 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_13.xy, r0.z, v_13.z);
  let v_14 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o3 = ((r0.www * r0.xyz)).xyzx;
  o4.w = 1.0f;
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o5 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_15 = &(x0[0u]);
  *(v_15) = vec4<f32>((*(v_15)).x, vec3<f32>());
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
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
  @builtin(position)
  o5 : vec4<f32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, v);
}
