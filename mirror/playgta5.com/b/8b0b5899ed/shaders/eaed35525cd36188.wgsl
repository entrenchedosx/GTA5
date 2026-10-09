diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v = -(cb5_5.tint_symbol_1[4u].xxxx);
  r0.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v.y);
  r0.z = (v.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r0.y);
  r0.x = fma(cb12_12.tint_symbol_2[1u].z, r0.y, r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  v_1((bitcast<u32>(r0.y) != 0u));
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o0.w = r0.x;
}

fn v_1(v_2 : bool) {
  if (v_2) {
    discard;
    return;
  }
}

@fragment
fn main(@location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v3);
  return o0;
}
