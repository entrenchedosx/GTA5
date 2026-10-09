diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb73_struct {
  tint_symbol : array<vec4<f32>, 73u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb73_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = 0.0f;
  r0.y = r0.x;
  r0.z = 0.0f;
  loop {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) >= 4i)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      break;
    }
    r1.y = f32(bitcast<i32>(r0.z));
    let v = fma(cb5_5.tint_symbol[72u].xy, r1.xy, v1.xy);
    let v_1 = r1;
    r1 = vec4<f32>(v_1.x, v.xy, v_1.w);
    r2 = textureSample(t0, s0, r1.yzyy.xy);
    r0.y = (r0.y + r2.x);
    r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
  }
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  o0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & vec4<u32>(1065353216u)));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
