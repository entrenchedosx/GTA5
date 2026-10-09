diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v3 : vec4<f32>;

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v3 = v_1;
  x0[0u].x = v4[0u];
  x0[0u].y = v4[1u];
  x0[0u].z = v4[2u];
  x0[0u].w = v4[3u];
  let v_2 = max(v2.x, 0.0f);
  r0.x = bitcast<f32>(select(u32(v_2), 4294967295u, (v_2 >= 4294967296.0f)));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) << 10u));
  r0.x = f32(bitcast<u32>(r0.x));
  r0.y = (r0.x + 1024.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v3.y < r0.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < v3.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  v_3((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  r0.x = (r0.w * v0.w);
  o0 = clamp(r0.xxxx, vec4<f32>(), vec4<f32>(1.0f));
}

fn v_3(v_4 : bool) {
  if (v_4) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v_5);
  return o0;
}
