diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb7_struct {
  tint_symbol_1 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (cb2_2.tint_symbol[15u].x + cb2_2.tint_symbol[15u].x);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.x = fma(r1.w, r0.x, -0.35294118523597717285f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol_1[6u].x)));
  v((bitcast<u32>(r0.y) != 0u));
  o0 = vec4<f32>(vec3<f32>(1.0f), o0.w);
  o0.w = r0.x;
}

fn v(v_1 : bool) {
  if (v_1) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
