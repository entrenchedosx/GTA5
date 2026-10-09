diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  r0 = vec4<f32>(((v1.yzx * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r0.w);
  let v = fma(v1.zxy, vec3<f32>(0.0f, 1.0f, 0.0f), (-(r0.xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = -(cb1_1.tint_symbol[15u].xyzx);
  r1 = vec4<f32>(((v0 + v_2.xyz)).xyz, r1.w);
  let v_3 = -(cb1_1.tint_symbol[14u].xyzx);
  r0.w = dot(r1.xyz, v_3.xyz);
  r0.w = max(r0.w, 0.00100000004749745131f);
  r0.w = (cb12_12.tint_symbol_1[0u].x / r0.w);
  let v_4 = abs(v3.xxxx);
  r1.x = fma(v_4.x, r0.w, cb12_12.tint_symbol_1[0u].y);
  r1.x = max(r1.x, 1.0f);
  r1.x = (r1.x / r0.w);
  r0.w = (r0.w * v_4.w);
  r0.w = min(r0.w, 1.0f);
  r0.w = (r0.w * r0.w);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb12_12.tint_symbol_1[0u].w);
  r0.w = exp2(r0.w);
  r0.w = (r0.w * cb12_12.tint_symbol_1[0u].z);
  o1.w = (r0.w * v2.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.x)));
  r1.y = select(-1.0f, 1.0f, (bitcast<u32>(r0.w) != 0u));
  o2.y = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.w = (r1.y * r1.x);
  let v_5 = fma(r0.www, r0.xyz, v0);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r1;
  o1 = vec4<f32>(v2.xyz, o1.w);
  o2.x = v3.y;
  o2.z = cb12_12.tint_symbol_1[1u].x;
  o3 = r0.xyz.xyzx;
  let v_6 = (r0.xyz + v_2.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  o4.z = dot(r0.xyz, v_3.xyz);
  r0.x = (r1.w + r1.x);
  r0.y = ((-(r1.yyyy)).y + r1.w);
  o4.w = r1.w;
  let v_7 = (r0.xy * vec2<f32>(0.5f));
  o4 = vec4<f32>(v_7.xy, o4.zw);
}

struct tint_symbol_2 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3, o4);
}
