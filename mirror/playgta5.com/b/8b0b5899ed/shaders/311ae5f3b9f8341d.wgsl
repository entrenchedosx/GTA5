diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb21_struct {
  tint_symbol_1 : array<vec4<f32>, 21u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec2<f32>) {
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  r0 = vec4<f32>(((v0.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  let v = (r0.xy + r0.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0;
  o0 = vec4<f32>(v_1.xy, o0.zw);
  o1 = vec4<f32>();
  o2 = v2.xyxy;
  o3.w = 1.0f;
  let v_2 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = 1.0f;
  o3.x = dot(r1.xyz, cb12_12.tint_symbol_1[18u].xyz);
  o3.y = dot(r1.xyz, cb12_12.tint_symbol_1[19u].xyz);
  o3.z = dot(r1.xyz, cb12_12.tint_symbol_1[20u].xyz);
  let v_3 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  o4 = vec4<f32>(v_5.xyz, o4.w);
  o4.w = 0.0f;
  let v_6 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o5 = vec4<f32>(v_6.xy, o5.zw);
  o5 = vec4<f32>(o5.xy, vec2<f32>(0.0f, 1.0f));
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
  @location(5u)
  o5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v2);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5);
}
