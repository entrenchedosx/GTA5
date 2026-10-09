diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v3 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.x = dot(cb2_2.tint_symbol[0u], cb2_2.tint_symbol[0u]);
  r0.z = dot(v0.xy, vec2<f32>(0.5f));
  r0.z = fract(r0.z);
  let v_2 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xz < vec2<f32>(4.0f, 0.5f))));
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  v_4((bitcast<u32>(r0.z) != 0u));
  r1 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r0.z = (r1.w * cb2_2.tint_symbol[15u].x);
  r0.x = (r0.z * r0.x);
  r0.x = (r0.x * 0.25f);
  let v_5 = bitcast<u32>(r0.y);
  let v_6 = r0.x;
  r0.x = select(r0.z, v_6, (v_5 != 0u));
  let v_7 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r0.y = (r0.x + v_7.y);
  r0.z = (v_7.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.x = fma(cb12_12.tint_symbol_2[2u].x, r0.y, r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  v_4((bitcast<u32>(r0.y) != 0u));
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o0.w = r0.x;
}

fn v_4(v_8 : bool) {
  if (v_8) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_9 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_9, v3);
  return o0;
}
