diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t1, s1, v3.xyxx.xy);
  let v = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (r0.z * cb12_12.tint_symbol_1[3u].x);
  let v_1 = (r0.xyw * cb12_12.tint_symbol_1[2u].yyy);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = (r0.yx * cb12_12.tint_symbol_1[2u].ww);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1.w = (-(r1.yyyy)).w;
  r0.z = dot(r1.xwz, v7.xyz);
  r0.z = log2(abs(r0.zzzz).z);
  r0.z = (r0.z * cb12_12.tint_symbol_1[2u].z);
  r0.z = exp2(r0.z);
  let v_3 = (r0.zzz * cb12_12.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r2.x = sin(v4.y);
  r3.x = cos(v4.y);
  let v_4 = (r0.xy * r2.xx);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = -(r0.zzzz);
  r0.y = fma(r0.y, r3.x, v_5.y);
  r0.x = fma(r0.x, r3.x, r0.w);
  r0.x = (r0.x / cb12_12.tint_symbol_1[2u].x);
  r0.y = (r0.y / cb12_12.tint_symbol_1[1u].w);
  let v_6 = clamp(v4.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r2.x = (r0.y + r0.z);
  r2.y = ((-(r0.xxxx)).y + r0.w);
  r0 = textureSample(t2, s2, r2.xyxx.xy);
  let v_7 = fma(r0.xyz, v1.xyz, r1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r0.w = (r1.w * v1.w);
  let v_8 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb13_13.tint_symbol[0u].x))));
  r2.y = ((-(v5.xxxx)).y + 1.0f);
  r1.w = (r0.w * r2.y);
  let v_9 = bitcast<vec4<u32>>(r2.xxxx);
  let v_10 = r1;
  o0 = select(r0, v_10, (v_9 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v7);
  return o0;
}
