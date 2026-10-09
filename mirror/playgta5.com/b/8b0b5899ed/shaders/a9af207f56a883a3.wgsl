diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb21_struct {
  tint_symbol_1 : array<vec4<f32>, 21u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb21_struct;

@group(0u) @binding(21u) var s5 : sampler;

@group(0u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0 = textureSampleLevel(t5, s5, v0.zwzz.xy, 0.0f);
  let v = fma(v0.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb11_11.tint_symbol_1[18u].xyz);
  r2.y = dot(r1.xyz, cb11_11.tint_symbol_1[19u].xyz);
  r0 = fma(r2.xyxy, r0.xxyy, cb1_1.tint_symbol[15u].xyxy);
  r0 = (r0 + vec4<f32>(-2000.0f, -3815.0f, -2000.0f, -3815.0f));
  r0 = (r0 * vec4<f32>(0.00400000018998980522f));
  let v_1 = min(r0.zw, r0.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = max(r0.zw, r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r0.xy)));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.xy < vec2<f32>())));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) | bitcast<u32>(r0.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, ((v0.xy + vec2<f32>(-0.5f))).xy, v_5.w);
  let v_6 = (r0.yz + r0.yz);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r0.xx * r0.yz);
  o0 = vec4<f32>(v_8.xy, o0.zw);
  let v_9 = (r0.xx * vec2<f32>(0.0f, 1.0f));
  o0 = vec4<f32>(o0.xy, v_9.xy);
  let v_10 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o1 = vec4<f32>(v_10.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>(0.0f, 1.0f));
  o2.w = 1.0f;
  let v_11 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.z = 1.0f;
  o2.x = dot(r0.xyz, cb11_11.tint_symbol_1[18u].xyz);
  o2.y = dot(r0.xyz, cb11_11.tint_symbol_1[19u].xyz);
  o2.z = dot(r0.xyz, cb11_11.tint_symbol_1[20u].xyz);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
