diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = textureSampleLevel(t3, s3, v1.xy.xyxx.xy, 0.0f).y;
  let v = abs(r0.xxxx);
  let v_1 = bitcast<u32>(cb12_12.tint_symbol[4u].w);
  r0.x = select(r0.x, v.x, (v_1 != 0u));
  r0.y = (r0.x * cb12_12.tint_symbol[0u].x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.5f >= r0.y)));
  v_2((bitcast<u32>(r0.y) != 0u));
  r0.x = clamp(fma(r0.xxxx, cb12_12.tint_symbol[0u].xxxx, vec4<f32>(-0.5f)).x, 0.0f, 1.0f);
  r0.y = fma(r0.x, -2.0f, 3.0f);
  r0.x = (r0.x * r0.x);
  o0.w = (r0.x * r0.y);
  let v_3 = textureSampleLevel(t2, s2, v1.xy.xyxx.xy, 0.0f).xyz;
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = r0;
  o0 = vec4<f32>(v_4.xyz, o0.w);
}

fn v_2(v_5 : bool) {
  if (v_5) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
