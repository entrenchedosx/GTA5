diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb73_struct {
  tint_symbol : array<vec4<f32>, 73u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb73_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  v_2((bitcast<u32>(r0.x) != 0u));
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v_3 = fma(cb5_5.tint_symbol[72u].xy, vec2<f32>(1.0f, 0.0f), v1.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r2 = textureSample(t5, s5, r0.xyxx.xy);
  r0.x = dot(v0.xy, vec2<f32>(0.5f));
  r0.x = fract(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.5f)));
  r0.y = ((-(r0.wwww)).y + 1.0f);
  let v_4 = bitcast<u32>(r0.x);
  let v_5 = r0.w;
  r0.x = select(r0.y, v_5, (v_4 != 0u));
  let v_6 = ((-(r1.xxyz)).yzw + r2.xyz);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = fma(r0.xxx, r0.yzw, r1.xyz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  o0.w = 0.0f;
}

fn v_2(v_8 : bool) {
  if (v_8) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_9 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_9, v1);
  return o0;
}
