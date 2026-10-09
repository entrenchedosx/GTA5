diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

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
  r0.x = textureSample(t4, s4, v1.xy.xyxx.xy).w;
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  v_2((bitcast<u32>(r0.y) != 0u));
  let v_3 = textureSample(t5, s5, v1.xy.xyxx.xy).xyz;
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(cb5_5.tint_symbol[66u].xy, vec2<f32>(1.0f, 0.0f), v1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = textureSample(t5, s5, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = dot(v0.xy, vec2<f32>(0.5f));
  r1.w = fract(r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.5f)));
  r2.x = ((-(r0.xxxx)).x + 1.0f);
  let v_6 = bitcast<u32>(r1.w);
  let v_7 = r0.x;
  r0.x = select(r2.x, v_7, (v_6 != 0u));
  let v_8 = ((-(r0.yzwy)).xyz + r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  o0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_10 = r0;
  o0 = vec4<f32>(v_10.xyz, o0.w);
}

fn v_2(v_11 : bool) {
  if (v_11) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_12 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_12, v1);
  return o0;
}
