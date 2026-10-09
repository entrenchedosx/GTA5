diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb75_struct {
  tint_symbol : array<vec4<f32>, 75u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb75_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner() {
  r0 = textureSample(t0, s0, vec2<f32>(0.5f));
  r0.y = log2(r0.x);
  o0.w = r0.x;
  r0.x = (r0.y * cb5_5.tint_symbol[71u].y);
  r0.x = exp2(r0.x);
  r0.x = fma(cb5_5.tint_symbol[71u].x, r0.x, cb5_5.tint_symbol[71u].z);
  r0.x = (r0.x + cb5_5.tint_symbol[71u].w);
  r0.x = max(r0.x, cb5_5.tint_symbol[72u].x);
  r0.x = min(r0.x, cb5_5.tint_symbol[72u].y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v = -(bitcast<vec4<i32>>(r0.yyyy));
  r0.y = bitcast<f32>((bitcast<i32>(r0.z) + v.y));
  r0.y = f32(bitcast<i32>(r0.y));
  r0.z = (abs(r0.xxxx).z * cb5_5.tint_symbol[72u].z);
  r0.x = fma(r0.z, r0.y, r0.x);
  r0.x = max(r0.x, cb5_5.tint_symbol[72u].x);
  r0.z = min(r0.x, cb5_5.tint_symbol[72u].y);
  r1 = textureSample(t1, s1, vec2<f32>(0.5f));
  let v_1 = -(r1.yyyy);
  r0.x = (r0.z + v_1.x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v_2 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.x) + v_2.w));
  r0.w = f32(bitcast<i32>(r0.w));
  r1.x = clamp(((cb5_5.tint_symbol[73u].zzzz * cb5_5.tint_symbol[73u].wwww)).x, 0.0f, 1.0f);
  r1.x = (r1.x / cb5_5.tint_symbol[73u].z);
  r0.x = (abs(r0.xxxx).x * r1.x);
  r0.x = min(r0.x, cb5_5.tint_symbol[74u].x);
  r1.x = (r0.w * r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol[74u].z >= r0.x)));
  r1.x = fma(r1.x, cb5_5.tint_symbol[73u].z, r1.y);
  r1.z = max(r0.z, r1.x);
  r1.x = max(r1.y, r1.x);
  r1.y = min(r1.y, r1.z);
  r1.x = min(r0.z, r1.x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.x)));
  let v_3 = bitcast<u32>(r1.z);
  let v_4 = r1.y;
  r0.w = select(r1.x, v_4, (v_3 != 0u));
  let v_5 = bitcast<u32>(r0.x);
  let v_6 = r0.z;
  r0.x = select(r0.w, v_6, (v_5 != 0u));
  r0.x = max(r0.x, cb5_5.tint_symbol[72u].x);
  r0.y = min(r0.x, cb5_5.tint_symbol[72u].y);
  let v_7 = r0;
  let v_8 = o0;
  o0 = vec4<f32>(v_8.x, v_7.yz, v_8.w);
  o0.x = exp2(r0.y);
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
