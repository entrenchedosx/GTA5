diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec4<f32>) {
  r0.x = dot(v0.xyz, v0.xyz);
  r0.y = inverseSqrt(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  let v = (r0.yyy * v0.xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec3<u32>>(r0.xxx);
  let v_2 = select(v0.xyz, r0.yzw, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = (v1.w + 0.05799999833106994629f);
  let v_3 = fma(r0.xyz, r0.www, v1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  let v_4 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  o2 = vec4<f32>(v_5.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1.x = (r0.w + r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  let v_6 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_6.xy, o1.zw);
  let v_7 = r0;
  o1 = vec4<f32>(o1.xy, v_7.zw);
  o2.w = r0.w;
  o3 = v1;
  o4 = v2.xyxy;
  o5 = v3;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_1(o0, o1, o2, o3, o4, o5);
}
