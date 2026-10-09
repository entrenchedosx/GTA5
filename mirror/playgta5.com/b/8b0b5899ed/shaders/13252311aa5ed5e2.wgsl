diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb18_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb10_10.tint_symbol_2[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t12, s12, r0.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb10_10.tint_symbol_2[17u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb10_10.tint_symbol_2[17u].z / r0.x);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, ((v2.xy / v2.ww)).xy, v_3.w);
  let v_4 = fma(r0.yz, r0.xx, cb1_1.tint_symbol[15u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy + (-(v4.xyxx)).xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1.x = dot(v3.xy, r0.xy);
  r1.y = dot(v3.zw, r0.xy);
  r0.x = (v4.w * 0.5f);
  let v_6 = fma(r1.xy, r0.xx, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xy < vec2<f32>())));
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r0.xy)));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2 = textureSample(t2, s2, r0.xyxx.xy);
  r0.x = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r1.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r0.x)));
  r0.w = select(v1.w, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r0 = vec4<f32>(v1.xyz, r0.w);
  r0 = (r0 * r2);
  let v_9 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@builtin(position) v_10 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_10, v1, v2, v3, v4);
  return o0;
}
