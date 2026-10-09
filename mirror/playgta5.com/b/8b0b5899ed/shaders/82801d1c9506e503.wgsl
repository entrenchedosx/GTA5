diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  let v = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.zzzz);
  o1.y = fma(r0.w, 0.5f, v_1.y);
  o1.x = (r0.y + r0.x);
  o1.z = r0.w;
  o1.w = v1.y;
  let v_2 = (v0 + cb1_1.tint_symbol[3u].xyz);
  o2 = vec4<f32>(v_2.xyz, o2.w);
  o2.w = v1.x;
  o3 = v2.xyxy;
  r0.x = dot(v3, v3);
  r0.x = inverseSqrt(r0.x);
  o4 = ((r0.xxx * v3)).xyzx;
  r0 = textureSampleLevel(t2, s2, v2.xyxx.xy, 0.0f);
  o5 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f)).xyxy;
}

struct tint_symbol_1 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_1(o0, o1, o2, o3, o4, o5);
}
