diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb6_struct {
  tint_symbol : array<vec4<f32>, 6u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < 0.81568628549575805664f)));
  r1.y = (r0.w * 255.0099945068359375f);
  r1.y = floor(r1.y);
  r1.z = (r1.y + -32.0f);
  r2.x = (r1.z * 0.0078125f);
  r2.y = cb5_5.tint_symbol[5u].x;
  r2 = textureSample(t5, s5, r2.xyxx.xy);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 32.0f)));
    r1.y = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r1.y)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      r1.x = ((-(r2.wwww)).x + 1.0f);
      let v = (r0.xyz * r1.xxx);
      r1 = vec4<f32>(v.xyz, r1.w);
      let v_1 = fma(r2.xyz, r2.www, r1.xyz);
      r0 = vec4<f32>(v_1.xyz, r0.w);
      r0.w = 1.0f;
    }
  } else {
    r0 = vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f);
  }
  o0 = (r0 * v1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
