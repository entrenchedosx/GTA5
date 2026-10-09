diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r1.x = (r0.w * 255.0099945068359375f);
  r1.x = floor(r1.x);
  r1.y = (r1.x + -32.0f);
  let v = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r1.yyy < vec3<f32>(32.0f, 64.0f, 96.0f))));
  r1 = vec4<f32>(r1.x, v.xyz);
  let v_1 = bitcast<vec4<u32>>(r1.wwww);
  let v_2 = cb5_5.tint_symbol[3u];
  r2 = select(cb5_5.tint_symbol[4u], v_2, (v_1 != vec4<u32>()));
  let v_3 = bitcast<vec4<u32>>(r1.zzzz);
  let v_4 = cb5_5.tint_symbol[2u];
  r2 = select(r2, v_4, (v_3 != vec4<u32>()));
  let v_5 = bitcast<vec4<u32>>(r1.yyyy);
  let v_6 = cb5_5.tint_symbol[1u];
  r2 = select(r2, v_6, (v_5 != vec4<u32>()));
  r1.y = ((-(r2.wwww)).y + 1.0f);
  let v_7 = (r0.xyz * r1.yyy);
  r1 = vec4<f32>(r1.x, v_7.xyz);
  let v_8 = fma(r2.xyz, r2.www, r1.yzw);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r2.w = 1.0f;
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 32.0f)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
  let v_9 = bitcast<vec4<u32>>(r1.xxxx);
  let v_10 = r2;
  r0 = select(r0, v_10, (v_9 != vec4<u32>()));
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < 0.81568628549575805664f)));
  let v_11 = bitcast<vec4<u32>>(r1.xxxx);
  r0 = select(vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f), r0, (v_11 != vec4<u32>()));
  o0 = (r0 * v1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
