diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v1.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xy * vec2<f32>(0.25f, 0.5f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.w = (abs(r0.zzzz).w + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_2 = (r0.xy / r0.ww);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = ((-(r0.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r0.x = ((-(r1.yyyy)).x + 1.0f);
  let v_5 = bitcast<u32>(r0.z);
  let v_6 = r0.x;
  r1.x = select(r1.y, v_6, (v_5 != 0u));
  o0 = textureSample(t2, s2, r1.xzxx.xy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
