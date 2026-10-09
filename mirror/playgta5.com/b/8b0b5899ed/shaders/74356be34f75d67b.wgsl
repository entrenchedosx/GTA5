diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v = bitcast<vec3<u32>>(r0.zzz);
  let v_1 = r0.xyw;
  let v_2 = select(r1.xyw, v_1, (v != vec3<u32>()));
  o0 = vec4<f32>(v_2.xy, o0.z, v_2.z);
  o0.z = r1.z;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
