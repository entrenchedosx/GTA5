diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0.x = (v4.z + v5.x);
  r0.x = (r0.x * cb12_12.tint_symbol_1[3u].y);
  let v = r0.xxxx;
  r0.x = sin(v.x);
  r1.x = cos(v.x);
  r0.y = (r1.x / cb12_12.tint_symbol_1[3u].z);
  r0.x = (r0.x / cb12_12.tint_symbol_1[3u].z);
  r0 = vec4<f32>(r0.xy, ((v4.zw + vec2<f32>(1.0f))).xy);
  r0.w = fma((-(r0.wwww)).w, 0.5f, 1.0f);
  r1.x = fma(r0.z, 0.5f, r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  r0 = textureSample(t2, s2, r1.xyxx.xy);
  let v_1 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r0.w = (r1.w * v1.w);
  let v_2 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb13_13.tint_symbol[0u].x))));
  r2.y = ((-(v5.xxxx)).y + 1.0f);
  r1.w = (r0.w * r2.y);
  let v_3 = bitcast<vec4<u32>>(r2.xxxx);
  let v_4 = r1;
  o0 = select(r0, v_4, (v_3 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4, v5);
  return o0;
}
