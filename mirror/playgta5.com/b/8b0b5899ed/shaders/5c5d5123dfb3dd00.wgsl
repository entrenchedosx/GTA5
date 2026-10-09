diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol[4u].x))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_2 = (v0.xy / cb12_12.tint_symbol[2u].xy);
    r0 = vec4<f32>(v_2.xy, r0.zw);
    r1.x = (cb12_12.tint_symbol[2u].y / cb12_12.tint_symbol[2u].x);
    let v_3 = (r0.xy + vec2<f32>(-0.5f));
    r0 = vec4<f32>(v_3.xy, r0.zw);
    r1.y = 1.0f;
    let v_4 = (r0.xy * r1.xy);
    r0 = vec4<f32>(r0.xy, v_4.xy);
    r0.z = dot(r0.zw, r0.zw);
    r0.w = sqrt(r0.z);
    r0.w = fma(cb12_12.tint_symbol[3u].y, r0.w, cb12_12.tint_symbol[3u].x);
    r0.z = fma(r0.z, r0.w, 1.0f);
    let v_5 = fma(r0.zz, r0.xy, vec2<f32>(0.5f));
    r0 = vec4<f32>(v_5.xy, r0.zw);
    let v_6 = (vec2<f32>(0.0f, 0.5f) / cb12_12.tint_symbol[2u].xy);
    r0 = vec4<f32>(r0.xy, v_6.xy);
    let v_7 = ((-(r0.zwzz)).xy + r0.xy);
    r1 = vec4<f32>(v_7.xy, r1.zw);
    r1 = textureSample(t2, s2, r1.xyxx.xy);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (v0.z < r1.x)));
    v_8((bitcast<u32>(r1.y) != 0u));
    let v_9 = (r0.zw + r0.xy);
    r0 = vec4<f32>(v_9.xy, r0.zw);
    r0 = textureSample(t2, s2, r0.xyxx.xy);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (v0.z < r0.x)));
    r0.z = ((-(r0.xxxx)).z + v0.z);
    r0.x = ((-(r0.xxxx)).x + r1.x);
    r0.x = (r0.z / r0.x);
    r0.x = ((-(r0.xxxx)).x + 1.0f);
    let v_10 = bitcast<u32>(r0.y);
    r0.x = select(1.0f, r0.x, (v_10 != 0u));
  } else {
    r0.x = 1.0f;
  }
  r1 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1 = (r1 * v1);
  r1 = (r1 * cb12_12.tint_symbol[0u]);
  r2 = vec4<f32>(v3.xyz, r2.w);
  r2.w = 1.0f;
  r0.y = dot(r2, cb12_12.tint_symbol[1u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.y = (r0.y * r1.w);
  r0.x = (r0.x * r0.y);
  r0.y = min(v5.y, v5.x);
  r0.y = clamp(min(r0.yyyy, v5.xyz.zzzz).y, 0.0f, 1.0f);
  o0.w = (r0.y * r0.x);
  let v_11 = r1;
  o0 = vec4<f32>(v_11.xyz, o0.w);
}

fn v_8(v_12 : bool) {
  if (v_12) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_13 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_13, v1, v2, v3, v5);
  return o0;
}
