diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> v10 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v2 : vec4<f32>) {
  x0[0u].x = v10[0u];
  x0[0u].y = v10[1u];
  x0[0u].z = v10[2u];
  x0[0u].w = v10[3u];
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  v((bitcast<u32>(r0.y) != 0u));
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o0.w = r0.x;
}

fn v(v_1 : bool) {
  if (v_1) {
    discard;
    return;
  }
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
