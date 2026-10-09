diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb46_struct {
  tint_symbol : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  o0 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let v = fma(v1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
  r0.x = (v1.w + cb3_3.tint_symbol[45u].w);
  r0.x = (r0.x * 0.5f);
  r0.y = 0.0f;
  let v_1 = sqrt(r0.xy);
  o3 = vec4<f32>(v_1.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1);
  return tint_symbol_1(o0, o1, o2, o3);
}
