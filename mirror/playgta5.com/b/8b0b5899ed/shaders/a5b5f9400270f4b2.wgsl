diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

struct cb47_struct {
  tint_symbol_2 : array<vec4<f32>, 47u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb47_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>() >= cb5_5.tint_symbol_1[0u])));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0) & vec4<u32>(1065353216u)));
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  v((bitcast<u32>(r0.x) != 0u));
  r0.x = v2.w;
  r0.y = v3.w;
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = (r0.w * v4.x);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[46u].x)));
  r0.x = fma((-(r0.xxxx)).x, cb2_2.tint_symbol[15u].x, 1.0f);
  let v_1 = bitcast<u32>(r0.z);
  let v_2 = r0.x;
  r0.x = select(r0.y, v_2, (v_1 != 0u));
  r0.x = (r0.x * cb11_11.tint_symbol_2[21u].w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[21u].z >= r0.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[21u].w == 1.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  v((bitcast<u32>(r0.x) != 0u));
  o0 = cb5_5.tint_symbol_1[0u];
  o1 = cb5_5.tint_symbol_1[1u];
}

fn v(v_3 : bool) {
  if (v_3) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v2, v3, v4);
  return tint_symbol_3(o0, o1);
}
