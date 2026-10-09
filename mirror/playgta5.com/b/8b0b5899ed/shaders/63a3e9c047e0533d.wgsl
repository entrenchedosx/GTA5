diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol[4u].x))));
  r0.y = textureSampleLevel(t3, s3, v1.xy.xyxx.xy, 0.0f).y;
  r0.y = (abs(r0.yyyy).y * cb12_12.tint_symbol[0u].x);
  r0.z = ceil(r0.y);
  let v = bitcast<u32>(r0.x);
  let v_1 = r0.z;
  r0.x = select(r0.y, v_1, (v != 0u));
  r0.y = trunc(r0.x);
  let v_2 = r0.x;
  let v_3 = max(v_2, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_3), 2147483647i, (v_3 >= 2147483648.0f)), 0i, !((v_2 == v_2))));
  let v_4 = bitcast<u32>(r0.x);
  o0.w = select(0.0f, cb12_12.tint_symbol[0u].z, (v_4 != 0u));
  r0.x = (r0.y / cb12_12.tint_symbol[0u].x);
  let v_5 = fma(r0.xxx, vec3<f32>(0.0f, -1.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 0.0f));
  o0 = vec4<f32>(v_5.xyz, o0.w);
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
