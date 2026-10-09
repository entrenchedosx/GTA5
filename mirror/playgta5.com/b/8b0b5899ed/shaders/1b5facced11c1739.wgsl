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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_5 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_6 = clamp(((r0.xyxx + v_5)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_7 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_8.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v1.zw);
  o2 = v2.xyxy;
  r0.x = dot(v3, v3);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_9 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_11.xy, r0.z, v_11.z);
  let v_12 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o3 = ((r0.www * r0.xyz)).xyzx;
}

struct tint_symbol_3 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
