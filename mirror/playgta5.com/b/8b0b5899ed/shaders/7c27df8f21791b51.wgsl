diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb12_12.tint_symbol[0u].xyxy, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), v1.xy.xyxy);
  r1 = textureSample(t2, s2, r0.xyxx.xy).wxyz;
  r0 = textureSample(t2, s2, r0.zwzz.xy);
  r2.x = max(r1.z, r1.y);
  r2.x = max(r1.w, r2.x);
  r2.x = (r2.x * cb12_12.tint_symbol[2u].y);
  r3 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r2.y = max(r3.y, r3.x);
  r2.y = max(r3.z, r2.y);
  r2.y = (r2.y * cb12_12.tint_symbol[2u].y);
  let v = max(r2.xy, cb12_12.tint_symbol[2u].xx);
  r2 = vec4<f32>(v.xy, r2.zw);
  r4.x = min(r2.x, r2.y);
  r5 = fma(cb12_12.tint_symbol[0u].xyxy, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), v1.xy.xyxy);
  r6 = textureSample(t2, s2, r5.xyxx.xy);
  r5 = textureSample(t2, s2, r5.zwzz.xy);
  r2.x = max(r6.y, r6.x);
  r2.x = max(r6.z, r2.x);
  r1.y = r6.w;
  r2.x = (r2.x * cb12_12.tint_symbol[2u].y);
  r2.x = max(r2.x, cb12_12.tint_symbol[2u].x);
  r4.y = min(r2.x, r2.y);
  r0.x = max(r0.y, r0.x);
  r0.x = max(r0.z, r0.x);
  r1.z = r0.w;
  r0.x = (r0.x * cb12_12.tint_symbol[2u].y);
  r0.x = max(r0.x, cb12_12.tint_symbol[2u].x);
  r4.z = min(r0.x, r2.y);
  r0.x = max(r5.y, r5.x);
  r0.x = max(r5.z, r0.x);
  r1.w = r5.w;
  r1 = (-(r1) + r3.wwww);
  r0.x = (r0.x * cb12_12.tint_symbol[2u].y);
  r0.x = max(r0.x, cb12_12.tint_symbol[2u].x);
  r4.w = min(r0.x, r2.y);
  r0 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r1) >= r4)));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0) & vec4<u32>(1065353216u)));
  r1.x = dot(r0, r0);
  o0 = r0;
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) == 0i)));
  v_1((bitcast<u32>(r0.x) != 0u));
}

fn v_1(v_2 : bool) {
  if (v_2) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
